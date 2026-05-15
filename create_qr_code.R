################################################################################
# create_qr_code_clean.R
# Purpose: Generate a clean QR code for SENSS poster
################################################################################

# Install package if needed
if (!requireNamespace("qrcode", quietly = TRUE)) {
  install.packages("qrcode")
}

library(qrcode)

# Replace this with your final GitHub Pages link
poster_url <- "https://williamdormechele.github.io/senss-poster-2026/"

# Create QR code object
qr <- qr_code(poster_url)

# Save as SVG: best for PowerPoint/poster because it stays sharp when resized
generate_svg(qr, filename = "poster_qr_code.svg")

# Optional: also save as PNG preview
png("poster_qr_code.png", width = 1200, height = 1200, res = 300)
plot(qr, col = c("white", "black"))
dev.off()

cat("QR code created successfully:\n")
cat("- poster_qr_code.svg\n")
cat("- poster_qr_code.png\n")