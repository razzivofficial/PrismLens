// CHATBOT STARTED
var coll = document.getElementsByClassName("collapsible");

for (let i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function () {
        this.classList.toggle("active");

        var content = this.nextElementSibling;

        if (content.style.maxHeight) {
            content.style.maxHeight = null;
        } else {
            content.style.maxHeight = content.scrollHeight + "px";
        }

    });
}

function getTime() {
    let today = new Date();
    hours = today.getHours();
    minutes = today.getMinutes();

    if (hours < 10) {
        hours = "0" + hours;
    }

    if (minutes < 10) {
        minutes = "0" + minutes;
    }

    let time = hours + ":" + minutes;
    return time;
}

// Gets the first message
function firstBotMessage() {
    let firstMessage = "Namaste! Welcome to PrimLens Help Centre."
    let secondMessage = "How can I help today?"
    let thirdMessage = "start conservation -----> Press '1' "
    let fourMessage = "end conservation -----> Press '0' "
    document.getElementById("botStarterMessage").innerHTML = '<p class="botText"><span>' + firstMessage + '<p class="botText"><span>' + 
    secondMessage + '<p class="botText"><span>' + thirdMessage + '<p class="botText"><span>' + fourMessage + '</span></p>';

    let time = getTime();
    $("#chat-timestamp").append(time);
    document.getElementById("userInput").scrollIntoView(false);
}

firstBotMessage();

// Retrieves the response
function getHardResponse(userText) {
    let botResponse = getBotResponse(userText);
    let botHtml = '<p class="botText"><span>' + botResponse + '</span></p>';
    $("#chatbox").append(botHtml);

    document.getElementById("chat-bar-bottom").scrollIntoView(true);
}

//Gets the text text from the input box and processes it
function getResponse() {
    let userText = $("#textInput").val();

    if (userText == "") {
        userText = "type";
    }

    let userHtml = '<p class="userText"><span>' + userText + '</span></p>';

    $("#textInput").val("");
    $("#chatbox").append(userHtml);
    document.getElementById("chat-bar-bottom").scrollIntoView(true);

    setTimeout(() => {
        getHardResponse(userText);
    }, 1000)

}

// Handles sending text via button clicks
function buttonSendText(sampleText) {
    let userHtml = '<p class="userText"><span>' + sampleText + '</span></p>';

    $("#textInput").val("");
    $("#chatbox").append(userHtml);
    document.getElementById("chat-bar-bottom").scrollIntoView(true);

    //Uncomment this if you want the bot to respond to this buttonSendText event
    // setTimeout(() => {
    //     getHardResponse(sampleText);
    // }, 1000)
}

function sendButton() {
    getResponse();
}

function heartButton() {
    buttonSendText("Heart clicked!")
}

// Press enter to send a message
$("#textInput").keypress(function (e) {
    if (e.which == 13) {
        getResponse();
    }
});

// getBotResponse
function getBotResponse(input)
{
    // namaste - goodbye
    if(input == "1")
    {
        return "2.signin" + '<p class="botText"><span>' + 
        "3.signup" + '<p class="botText"><span>' + 
        "4.already signin/singup" + '</span></p>';
    }       
    else if (input == "0")
    {
        return "Goodbye";
    }

    // flow
    while(input != "0")
    {
        // signin-signup - problem
        if(input == "2")
        {
            return "first signin";
        }
        else if(input == "3")
        {
            return "create account";
        }
            
        else if(input == "4")
        {
            return "5.myopia" + '<p class="botText"><span>' + 
            "6.hypermetropia" + '<p class="botText"><span>' + 
            "7.color blind" + '</span></p>';
        }

        // spectacles
        if(input == "5" || input == "6" || input == "7")
        {
            return "8.round spectacles" + '<p class="botText"><span>' + 
            "9.rectangle spectacles" + '<p class="botText"><span>' + 
            "10.oval spectacles" + '</span></p>';
        }

        // check
        if(input == "8" || input == "9" || input == "10")
        {
            return "11.normal" + '<p class="botText"><span>' + 
            "12.anti-glare" + '<p class="botText"><span>' + 
            "13.blue ray" + '</span></p>';
        }
        // glasses

        if(input == "11" || input == "12" || input == "13")
        {
            return "Now check";
        }

    }
    return "Goodbye";
}

// CHATBOT ENDED