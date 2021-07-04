			<!-- Footer -->
				<section id="footer">
				<#if ((content.showcontactform)?has_content && (content.showcontactform == "false"))>
				<#else>
				    <#include "footer-contact.ftl">
				</#if>
					<div id="copyright" class="container">
						<ul class="links">
							<li>&copy; Untitled. All rights reserved.</li>
							<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							<li>Ported to JBake by: <a href="https://j0n.dev">Jonathan Bullock</a></li>
						</ul>
					</div>
				</section>

		</div>

		<!-- Scripts -->
			<script src="<@rootpath/>assets/js/jquery.min.js"></script>
			<script src="<@rootpath/>assets/js/jquery.dropotron.min.js"></script>
			<script src="<@rootpath/>assets/js/browser.min.js"></script>
			<script src="<@rootpath/>assets/js/breakpoints.min.js"></script>
			<script src="<@rootpath/>assets/js/util.js"></script>
			<script src="<@rootpath/>assets/js/main.js"></script>

	</body>
</html>
