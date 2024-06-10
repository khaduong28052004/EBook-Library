<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">

</head>
<body>
	<link rel="stylesheet" href="/assets/css/searchSpeak.css">
	<script src="/assets/js/searchSpeak.js"></script>
	<main>
		<div id="content" class="container">
			<button id="btnTalk" hidden></button>
			<form action="/html/test2.html" method="post">
				<div class="container mt-5">
					<div class="d-flex justify-content-center ">

						<div class="close-icon" id="closeIcon">
							<a href="/html/test2.html">&times;</a>
						</div>
						<div class="textSpeak text-center me-5">
							<p id="message">Đang nghe...</p>
							<a id="recordButton2" class="text-primary"
								style="cursor: pointer;">Thử lại</a>
						</div>
						<div class="record-button" id="recordButton">
							<i class="fas fa-microphone"></i>
						</div>
						<button id="btnPOST" hidden></button>

					</div>
				</div>
			</form>
		</div>
	</main>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var message = document.querySelector('#message');
			var recordButton = document.getElementById('recordButton');
			var recordButton2 = document.getElementById('recordButton2');
			var btnPOST = document.getElementById('btnPOST');
			var SpeechRecognition = SpeechRecognition
					|| webkitSpeechRecognition;
			var SpeechGrammarList = SpeechGrammarList
					|| webkitSpeechGrammarList;
			var grammar = '#JSGF V1.0;';

			var recognition = new SpeechRecognition();
			var speechRecognitionList = new SpeechGrammarList();
			speechRecognitionList.addFromString(grammar, 1);
			recognition.grammars = speechRecognitionList;
			recognition.lang = 'vi-VN';
			recognition.interimResults = false;

			recognition.onresult = function(event) {
				var lastResult = event.results.length - 1;
				var content = event.results[lastResult][0].transcript;
				message.textContent = content + '.';
				recordButton2.hidden = true;
			};

			recognition.onspeechend = function() {
				if (message.textContent === 'Đang nghe') {
					message.textContent = 'Không nghe rỏ, vui lòng nói lại.';
				} else {
					btnPOST.click();
				}
				recognition.stop();
				recordButton.classList.remove('recording');
				recordButton.classList.add('stopped');
				recordButton2.hidden = false;
			};

			recognition.onerror = function(event) {
				message.textContent = 'Không nghe được: ' + event.error;
				recordButton.classList.remove('recording');
				recordButton.classList.add('stopped');
				recordButton2.hidden = false;
			};

			document.querySelector('#btnTalk').addEventListener('click',
					function() {
						recognition.start();
						recordButton2.hidden = true;
						message.textContent = 'Đang nghe';
					});
			recordButton2.addEventListener('click', function() {
				if (recordButton.classList.contains('recording')) {
					recognition.stop();
				} else {
					recognition.start();
					recordButton.classList.remove('stopped');
					recordButton2.hidden = true;
					message.textContent = 'Đang nghe';
				}
				recordButton.classList.toggle('recording');
			})

			recordButton.addEventListener('click', function() {
				if (recordButton.classList.contains('recording')) {
					recognition.stop();
				} else {
					recognition.start();
					recordButton.classList.remove('stopped');
					recordButton2.hidden = true;
					message.textContent = 'Đang nghe';
				}
				recordButton.classList.toggle('recording');
			});
			document.querySelector('#btnTalk').click();
		});
	</script>
</body>
</html>