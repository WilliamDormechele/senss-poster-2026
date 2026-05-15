"""
create_qr_code.py
Purpose: Create a QR code for the SENSS poster landing page.
Run this AFTER GitHub Pages gives you the final public website link.

Install first:
    pip install "qrcode[pil]"

Run:
    python create_qr_code.py
"""

import qrcode

POSTER_URL = "https://YOUR-GITHUB-USERNAME.github.io/senss-poster-2026/"

qr = qrcode.QRCode(
    version=None,
    error_correction=qrcode.constants.ERROR_CORRECT_H,
    box_size=20,
    border=4,
)
qr.add_data(POSTER_URL)
qr.make(fit=True)

img = qr.make_image(fill_color="black", back_color="white")
img.save("poster_qr_code.png")

print("QR code saved as poster_qr_code.png")
print(f"QR code points to: {POSTER_URL}")
