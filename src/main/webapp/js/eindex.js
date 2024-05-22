//redirect function
function redirectTo(url) {
    window.location.href = url;
}
    
//flip profile icon
document.addEventListener("DOMContentLoaded", function () {
    const profileIcon = document.getElementById('profile-icon');
    const messageBox = document.getElementById('message-box');

        profileIcon.addEventListener('click', function (event) {
            // Toggle the 'flipped' class when clicked
            profileIcon.classList.toggle('flipped');
            // Toggle the visibility of the message box
            messageBox.classList.toggle('hidden');
            event.stopPropagation(); // Prevent the click event from bubbling up
        });

        // Add event listener to body to close the message box when clicking outside of it
        document.body.addEventListener('click', function () {
            if (!messageBox.classList.contains('hidden')) {
                messageBox.classList.add('hidden');
                // Revert the flip when the message box is closed by clicking outside
                profileIcon.classList.remove('flipped');
            }
        });

        // Prevent the message box from closing when clicking inside it
        messageBox.addEventListener('click', function (event) {
            event.stopPropagation(); // Prevent the click event from bubbling up
    });
});