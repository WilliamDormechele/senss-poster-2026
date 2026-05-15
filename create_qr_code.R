################################################################################
# create_qr_code.R
# Purpose: Create a QR code for the SENSS poster landing page.
# Run this AFTER GitHub Pages gives you the final public website link.
################################################################################

# 1. Install/load packages ------------------------------------------------------
if (!requireNamespace("qrencoder", quietly = TRUE)) install.packages("qrencoder")
if (!requireNamespace("png", quietly = TRUE)) install.packages("png")

library(qrencoder)
library(png)

# 2. Put your final GitHub Pages URL here --------------------------------------
# Example: "https://williamdormechele.github.io/senss-poster-2026/"
poster_url <- "https://YOUR-GITHUB-USERNAME.github.io/senss-poster-2026/"

# 3. Generate the QR code as a raster ------------------------------------------
qr <- qrencoder::qrencode_raster(poster_url)

# 4. Save as a high-resolution PNG ---------------------------------------------
# This creates a clean black-and-white QR code suitable for inserting into PowerPoint.
png(filename = "poster_qr_code.png", width = 1600, height = 1600, res = 300)
par(mar = c(0, 0, 0, 0))
plot(qr, axes = FALSE, asp = 1)
dev.off()

cat("QR code saved as: poster_qr_code.png\n")
cat("QR code points to:", poster_url, "\n")
