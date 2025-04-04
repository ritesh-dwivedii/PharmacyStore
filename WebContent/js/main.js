// Main JavaScript file for custom functionality
$(document).ready(function() {
    // Initialize tooltips
    $('[data-toggle="tooltip"]').tooltip();

    // Initialize popovers
    $('[data-toggle="popover"]').popover();

    // Form validation
    $('.needs-validation').on('submit', function(e) {
        var form = $(this);
        if (form[0].checkValidity() === false) {
            e.preventDefault();
            e.stopPropagation();
        }
        form.addClass('was-validated');
    });

    // Add to cart functionality
    $('.add-to-cart').on('click', function(e) {
        e.preventDefault();
        var productId = $(this).data('product-id');
        var quantity = $(this).closest('form').find('.quantity-input').val() || 1;
        
        // Example cart addition
        $.ajax({
            url: 'addToCart',
            method: 'POST',
            data: {
                productId: productId,
                quantity: quantity
            },
            success: function(response) {
                swal('Success', 'Item added to cart!', 'success');
            },
            error: function() {
                swal('Error', 'Failed to add item to cart', 'error');
            }
        });
    });
}); 