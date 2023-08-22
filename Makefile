default: generate

# Runs the ego templating generation tool whenever an HTML template changes.
generate: http/html/*.ego
	@go run github.com/benbjohnson/ego/cmd/ego ./http/html

# Removes all ego Go files from the http/html directory.
clean:
	@rm http/html/*.ego.go

# Removes the third party theme from the file system.
remove-theme:
	@rm http/assets/css/theme.css

.PHONY: default generate clean remove-theme
