package org.cinow.omh.admin;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * REST API controller for the admin features.
 * 
 * @author brian
 */
@RestController
public class AdminController {
	
	/**
	 * @param location the location
	 * @param locationType the locationType
	 * @return the community data
	 */
	@GetMapping(path = "/api/admin/username", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getUsername(@AuthenticationPrincipal OAuth2User principal) {
		
		return ResponseEntity.ok(principal.getAttribute("email"));
	}
}