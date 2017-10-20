$(document).ready(function() {
$('#exampleModal').formValidation({
    framework: 'bootstrap',
    excluded: ':disabled',
    icon: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
        name: {
            validators: {
                notEmpty: {
                    message: 'The name is required'
                }
            }
        },
    }
});
});
