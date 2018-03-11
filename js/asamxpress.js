var commonVueConfig = {
    methods: {
        itemId: function () {
            var tokens = top.location.pathname.split("/");
            if (tokens.length >= 4)
                return tokens[3];
            return "";
        },
        requestedBy: function () {
            return $("#profile-messages .text").text().trim();
        },
        httpClient: (function () {
            var instance = axios.create({
                headers: {'Accept': 'application/json', "Content-Type": "application/json"}
            });

            instance.interceptors.response.use(
                function (response) {
                    return response;
                },
                function (error) {
                    if (error.response) {
                        if (error.response.status === 400)
                            alert(error.response.data.error_message);
                        else
                            alert(error.response.data);
                    } else if (error.request) {
                        alert(error.request);
                    } else {
                        alert(error.message);
                    }
                    return Promise.reject(error);
                }
            )
            ;

            return function () {
                return instance;
            };
        })(),
    },
    filters: {
        percentage: function (value) {
            if (!value) return ''
            return (value * 10) + "%";
        }
    }
};

if ($("#update_channel").length)
    new Vue({
        mixins: [commonVueConfig],
        el: '#update_channel',
        data: {
            channel: {}
        },
        methods: {
            createOrUpdateChannel: function () {
                var id = this.itemId();
                if (id)
                    this.updateChannel();
                else
                    this.createChannel();
            },
            createChannel: function () {
                var _this = this;
                _this.channel.requested_by = _this.requestedBy();
                this.httpClient().post('/bo/channel', _this.channel)
                    .then(function () {
                        parent.showalert(0, '操作成功！是否返回列表？<br /> <a href="javascript:;" onclick="goback();">返回</a>&nbsp; &nbsp;<a href="javascript:;" onclick="hiddendiv();">取消</a>');
                    })
                ;
            },
            updateChannel: function () {
                var _this = this;
                _this.channel.requested_by = _this.requestedBy();
                this.httpClient().post('/bo/channel/' + _this.channel.id, {
                    first_weight_price: _this.channel.price_of_first_pound,
                    addition_weight_price: _this.channel.price_of_next_pound,
                    tax_rate: _this.channel.tax_rate_formatted ? (+_this.channel.tax_rate_formatted) / 100 : null,
                    requested_by: this.requestedBy(),
                })
                    .then(function () {
                        parent.showalert(0, '操作成功！是否返回列表？<br /> <a href="javascript:;" onclick="goback();">返回</a>&nbsp; &nbsp;<a href="javascript:;" onclick="hiddendiv();">取消</a>');
                    })
                ;
            },
        },
        mounted: function () {
            var _this = this;
            var id = this.itemId();
            if (id) {
                this.httpClient().get('/bo/channel/' + id)
                    .then(function (response) {
                        _this.channel = response.data;
                    })
                ;
            }
        },
        watch: {
            "channel.tax_rate": function (newValue, oldValue) {
                if (newValue != oldValue) {
                    var tax_rate_formatted = newValue * 100;
                    if (tax_rate_formatted != this.channel.tax_rate_formatted)
                        this.channel.tax_rate_formatted = tax_rate_formatted;
                }
            },
            "channel.tax_rate_formatted": function (newValue, oldValue) {
                if (newValue != oldValue) {
                    var tax_rate = newValue / 100;
                    if (tax_rate != this.channel.tax_rate)
                        this.channel.tax_rate = tax_rate;
                }
            },
        }
    });

if ($("#orders").length)
    new Vue({
        mixins: [commonVueConfig],
        el: '#orders',
        data: {
            searchRequestObject: {
                page_size: 15,
                page_index: 0,
            },
            orders: {}
        },
        mounted: function () {
            var _this = this;
            $("#stime").click(function () {
                WdatePicker({minDate: '', doubleCalendar: false, dateFmt: 'yyyy-MM-ddTHH:mm:ss'});
            }).blur(function () {
                _this.searchRequestObject.from = $("#stime").val();
            });
            $("#etime").click(function () {
                WdatePicker({minDate: '', doubleCalendar: false, dateFmt: 'yyyy-MM-ddTHH:mm:ss'});
            }).blur(function () {
                _this.searchRequestObject.to = $("#etime").val();
            });

            this.searchOrder();
        },
        computed: {
            orderCount: function () {
                if (!this.orders || !this.orders.orders)
                    return 0;
                return this.orders.orders.length;
            }
        },
        methods: {
            listPages: function () {
                var pages = [];

                if (!this.orders)
                    return pages;

                var start = Math.max(1, this.searchRequestObject.page_index + 1 - 5);
                var end = Math.min(Math.ceil(this.orders.total / this.searchRequestObject.page_size), start + 5);

                for (var i = start; i <= end; i++) {
                    pages.push(i);
                }
                return pages;
            },
            searchOrder: function (page, from, to) {
                var _this = this;
                if (page)
                    this.searchRequestObject.page_index = page - 1;
                if (!this.searchRequestObject.page_index)
                    this.searchRequestObject.page_index = 0;
                if (from)
                    this.searchRequestObject.from = from;
                if (to)
                    this.searchRequestObject.to = to;
                this.httpClient().put('/bo/order/search', this.searchRequestObject)
                    .then(function (response) {
                        _this.orders = response.data;
                    })
                ;
            }
        },
    });

if ($("#order_detail").length)
    new Vue({
        mixins: [commonVueConfig],
        el: '#order_detail',
        data: {
            order: {},
            orderPriceRequest: {},
            orderPriceResponse: {},
            updateOrderDeclarationRequest: {declared_items: []},
            declareTypes: {}
        },
        methods: {
            loadOrder: function () {
                var _this = this;
                this.httpClient().get('/bo/order/' + this.itemId())
                    .then(function (response) {
                        _this.order = response.data;
                        _this.updateOrderDeclarationRequest.declared_items = _this.order.declare_items.slice(0);
                        _this.orderPriceRequest.weight = _this.order.weight;
                        _this.loadDeclareTypes();
                        _this.calculatePrice();
                    })
                ;
            },
            calculatePrice: function () {
                var _this = this;
                this.httpClient().put('/bo/order/' + this.itemId() + "/price", {
                    weight: _this.orderPriceRequest.weight,
                    declared_value: _this.order.declared_amount,
                })
                    .then(function (response) {
                        _this.orderPriceResponse = response.data;
                    })
                ;
            },
            updateWeight: function () {
                var _this = this;
                this.httpClient().post('/bo/order/' + this.itemId() + "/weight", {
                    weight: _this.orderPriceRequest.weight,
                    requested_by: _this.requestedBy(),
                })
                    .then(function () {
                        _this.loadOrder();
                        _this.closeModal();
                    })
                ;
            },
            updateDeclaration: function () {
                var _this = this;
                _this.updateOrderDeclarationRequest.requested_by = this.requestedBy();
                for (var i = 0; i < this.updateOrderDeclarationRequest.declared_items.length; i++) {
                    var item = this.updateOrderDeclarationRequest.declared_items[i];
                    if (item && item.declare_id && !item.declare_name) {
                        item.declare_name = $.grep(_this.declareTypes.declares, function (value, index) {
                            return value.id == item.declare_id
                        })[0].declare_name;
                    }
                }
                this.httpClient().post('/bo/order/' + this.itemId() + "/declaration", _this.updateOrderDeclarationRequest)
                    .then(function () {
                        _this.loadOrder();
                        _this.closeModal();
                    });
            },
            newDeclaration: function () {
                var _this = this;
                var newItem = {quantity: 1};
                _this.updateOrderDeclarationRequest.declared_items.push(newItem);
            },
            loadDeclareTypes: function () {
                var _this = this;
                this.httpClient().get('/bo/channel/' + this.order.channel_id + '/declare-types')
                    .then(function (response) {
                        _this.declareTypes = response.data;
                    })
                ;
            },
            reviewOrder: function () {
                var _this = this;
                this.httpClient().post('/bo/order/' + this.itemId() + "/review", {
                        requested_by: _this.requestedBy()
                    }
                )
                    .then(function () {
                        _this.loadOrder();
                        _this.closeModal();
                    })
                ;
            },
            receiveOrder: function () {
                var _this = this;
                this.httpClient().post('/bo/order/' + this.itemId() + "/receive", {
                        requested_by: _this.requestedBy()
                    }
                )
                    .then(function () {
                        _this.loadOrder();
                        _this.closeModal();
                    })
                ;
            },
            shipOrder: function () {
                var _this = this;
                this.httpClient().post('/bo/order/' + this.itemId() + "/ship", {
                    requested_by: _this.requestedBy()
                })
                    .then(function () {
                        _this.loadOrder();
                        _this.closeModal();
                    })
                ;
            },
            totalDeclaredAmountInUpdateOrderDeclarationRequest: function () {
                if (!this.updateOrderDeclarationRequest || !this.updateOrderDeclarationRequest.declared_items)
                    return 0;

                var sum = 0;
                for (var i = 0; i < this.updateOrderDeclarationRequest.declared_items.length; i++) {
                    var item = this.updateOrderDeclarationRequest.declared_items[i];
                    if (item && item.price && item.quantity)
                        sum += (item.price * item.quantity);
                }

                return sum;
            },
            closeModal: function () {
                $(".modal").removeClass("in");
                $(".modal-backdrop").remove();
                $('body').removeClass('modal-open');
                $('body').css('padding-right', '');
                $(".modal").hide();
            }
        },
        mounted: function () {
            this.loadOrder();
        }
    });