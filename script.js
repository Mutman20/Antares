function scrollToElement(elementId) {
    var element = document.getElementById(elementId);
    if (element) {
        element.scrollIntoView({ behavior: 'smooth' });
    }
}

function downloadFile(fileUrl) {
    window.location.href = fileUrl;
}

document.getElementById("emailForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent default form submission
    
    var message = document.getElementById("textInput").value;

    // Construct the mailto link with the email address and subjesct
    var mailtoLink = "mailto:ericwillner0@gmail.com?subject=New Email&body=" + encodeURIComponent(message);
    
    // Open the default email client with the mailto link
    window.location.href = mailtoLink;
  });