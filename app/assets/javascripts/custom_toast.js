var Toast = {
  options: {
    "closeButton": true,
    "debug": false,
    "progressBar": false,
    "preventDuplicates": false,
    "positionClass": "toast-top-center",
    "onclick": null,
    "showDuration": "400",
    "hideDuration": "500",
    "timeOut": "3000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut",
    "closeMethod": "fadeOut"
  },
  error: function(message, title) {
    toastr.options = this.options;
    toastr.error(message, title);
  },
  warning: function(message, title) {
    toastr.options = this.options;
    toastr.warning(message, title);
  },
  success: function(message, title) {
    toastr.options = this.options;
    toastr.success(message, title);
  }
};

