$(function() {
  $(".slider").slick({autoplay: true});

  var iconToShow = false;
  var fieldToValidate = {
    username: {
      icon: iconToShow,
      validators: {
        notEmpty: {
          message: 'The username is required'
        }
      }
    },
    email: {
      icon: iconToShow,
      validators: {
        notEmpty: {
          message: 'The email is required'
        },
        emailAddress: {
          message: 'The input is not a valid email address'
        }
      }
    },
    password: {
      icon: iconToShow,
      validators: {
        notEmpty: {
          message: 'The password is required'
        },
        stringLength: {
          min: 8,
          message: 'The password must have at least 8 characters'
        }
      }
    }
  };

  $('#registration-form').formValidation({
    framework: 'uikit',
    icon: {
        valid: 'uk-icon-check',
        invalid: 'uk-icon-times',
        validating: 'uk-icon-refresh'
    },
    fields: fieldToValidate
  });
});




