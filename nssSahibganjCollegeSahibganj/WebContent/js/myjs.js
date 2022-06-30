// Munda Details Editing
var i = 0;
function read() {
	if (!i) {
		document.getElementById("more").style.display = "inline";
		document.getElementById("dots").style.display = "none";
		document.getElementById("read").innerHTML = "Read less";
		i = 1

	} else {
		document.getElementById("more").style.display = "none";
		document.getElementById("dots").style.display = "inline";
		document.getElementById("read").innerHTML = "Read more";
		i = 0;
	}
}
// Dr. RAnjit Sir
var i = 0;
function read2() {
	if (!i) {
		document.getElementById("more2").style.display = "inline";
		document.getElementById("dots2").style.display = "none";
		document.getElementById("read2").innerHTML = "Read less";
		i = 1

	} else {
		document.getElementById("more2").style.display = "none";
		document.getElementById("dots2").style.display = "inline";
		document.getElementById("read2").innerHTML = "Read more";
		i = 0;
	}
}

// User Editing Form
$(document).ready(function() {
	var editStatus = false;
	$("#edit-profile-button").click(function() {
		if (editStatus == false) {
			$("#profile-details").hide()
			$("#profile-edit").show()
			editStatus = true;
			$(this).text("Back");
		} else {
			$("#profile-details").show()
			$("#profile-edit").hide()
			editStatus = false;
			$(this).text("Edit");
		}

	})

})
