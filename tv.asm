; ASM data file from a ZX-Paintbrush picture with 256 x 192 pixels (= 32 x 24 characters)
; and an attribute area of 768 bytes

; line based output of pixel data:

SECTION code_user
PUBLIC _tv_px
_tv_px:
defb 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x40, 0x01, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF8, 0x00, 0xFF, 0xFF
defb 0xFF, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x30, 0x00, 0x00, 0x0F, 0xFC, 0x00, 0x03, 0xF0, 0x08, 0x00, 0x04, 0x00, 0x00, 0x0F, 0xF8, 0x00, 0x1F, 0x00, 0x1F, 0xC0, 0x00, 0x3F, 0xFF
defb 0xFF, 0xE0, 0x00, 0x00, 0x01, 0x00, 0x00, 0xE0, 0x00, 0x30, 0x00, 0x00, 0x1F, 0xFE, 0x00, 0x01, 0xF0, 0x08, 0x00, 0x04, 0x00, 0x00, 0x03, 0xF0, 0x00, 0x0F, 0x00, 0x0F, 0x80, 0x00, 0x3F, 0xFF
defb 0xFF, 0xE0, 0x00, 0x00, 0x01, 0x00, 0x00, 0xE0, 0x00, 0x30, 0x00, 0x00, 0x0F, 0xFE, 0x00, 0x01, 0xE0, 0x18, 0x00, 0x0C, 0x00, 0x00, 0x00, 0xF8, 0x00, 0x1F, 0x00, 0x1E, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xF0, 0x00, 0x00, 0x01, 0x00, 0x00, 0xE0, 0x00, 0x30, 0x00, 0x00, 0x1F, 0xFE, 0x00, 0x01, 0xE0, 0x18, 0x00, 0x04, 0x00, 0x00, 0x00, 0x78, 0x00, 0x1F, 0x80, 0x1E, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xE0, 0x00, 0x00, 0x01, 0x00, 0x01, 0xE0, 0x00, 0x30, 0x00, 0x00, 0x1F, 0xFF, 0x00, 0x01, 0xE0, 0x38, 0x00, 0x04, 0x00, 0x00, 0x00, 0x38, 0x00, 0x1F, 0x00, 0x1C, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xF0, 0x00, 0x00, 0x01, 0x00, 0x00, 0xF0, 0x00, 0x30, 0x00, 0x00, 0x1F, 0xFF, 0x00, 0x01, 0xE0, 0x38, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x1F, 0x00, 0x18, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xE0, 0x00, 0x00, 0x01, 0x00, 0x00, 0xE0, 0x00, 0x70, 0x00, 0x00, 0x1F, 0xFF, 0x00, 0x01, 0xE0, 0x38, 0x00, 0x04, 0x00, 0x00, 0x00, 0x18, 0x00, 0x1F, 0x80, 0x18, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xF0, 0x00, 0x00, 0x01, 0x00, 0x01, 0xE0, 0x00, 0x30, 0x00, 0x00, 0x1F, 0xFF, 0x80, 0x00, 0xC0, 0x38, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x08, 0x00, 0x1F, 0x00, 0x18, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xE0, 0x00, 0x00, 0x01, 0x00, 0x00, 0xF0, 0x00, 0x30, 0x00, 0x00, 0x1F, 0xFF, 0x80, 0x01, 0xC0, 0x78, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18, 0x00, 0x1F, 0x80, 0x18, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xF0, 0x00, 0x00, 0x01, 0x80, 0x01, 0xE0, 0x00, 0x70, 0x00, 0x00, 0x1F, 0xFF, 0x80, 0x00, 0xC0, 0x78, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x08, 0x00, 0x1F, 0x80, 0x18, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xF0, 0x00, 0x00, 0x01, 0x00, 0x01, 0xF0, 0x00, 0x30, 0x00, 0x00, 0x1F, 0xFF, 0xC0, 0x00, 0xC0, 0x78, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x08, 0x00, 0x1F, 0x80, 0x18, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xF0, 0x00, 0x00, 0x01, 0x00, 0x01, 0xF0, 0x00, 0x78, 0x00, 0x00, 0x1F, 0xFF, 0xC0, 0x00, 0x80, 0xF8, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x08, 0x00, 0x1F, 0x80, 0x18, 0x00, 0x00, 0x1F, 0xFF
defb 0xFF, 0xF0, 0x00, 0x00, 0x01, 0x80, 0x01, 0xE0, 0x00, 0x70, 0x00, 0x00, 0x1F, 0xFF, 0xC0, 0x00, 0x00, 0xF8, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x08, 0x00, 0x1F, 0x80, 0x18, 0x00, 0x00, 0x3F, 0xFF
defb 0xFF, 0xF0, 0x00, 0x00, 0x01, 0x00, 0x01, 0xF0, 0x00, 0x70, 0x00, 0x00, 0x1F, 0xFF, 0xE0, 0x00, 0x00, 0xFC, 0x00, 0x0C, 0x00, 0x06, 0x00, 0x08, 0x00, 0x1F, 0x80, 0x18, 0x00, 0x00, 0x1F, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x01, 0xF0, 0x00, 0x78, 0x00, 0x1D, 0x3F, 0xFF, 0xE0, 0x00, 0x01, 0xF8, 0x00, 0x0E, 0x00, 0x07, 0x80, 0x0C, 0x00, 0x1F, 0x80, 0x1C, 0x00, 0x01, 0xBF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x01, 0xF0, 0x00, 0x70, 0x00, 0x1F, 0xFF, 0xFF, 0xE0, 0x00, 0x01, 0xF8, 0x00, 0x0C, 0x00, 0x07, 0xC0, 0x08, 0x00, 0x1F, 0x80, 0x1C, 0x00, 0x07, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x01, 0xF0, 0x00, 0x78, 0x00, 0x1F, 0xFF, 0xFF, 0xF0, 0x00, 0x01, 0xFC, 0x00, 0x0E, 0x00, 0x07, 0xC0, 0x0C, 0x00, 0x1F, 0x80, 0x1E, 0x00, 0x07, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x01, 0xF0, 0x00, 0x70, 0x00, 0x1F, 0xFF, 0xFF, 0xF0, 0x00, 0x03, 0xF8, 0x00, 0x0E, 0x00, 0x07, 0xC0, 0x1C, 0x00, 0x1F, 0x80, 0x1E, 0x00, 0x07, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x01, 0xF0, 0x00, 0x78, 0x00, 0x00, 0x1F, 0xFF, 0xF0, 0x00, 0x03, 0xFC, 0x00, 0x0E, 0x00, 0x07, 0x80, 0x1C, 0x00, 0x1F, 0x80, 0x1F, 0x00, 0x07, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x01, 0xF0, 0x00, 0x78, 0x00, 0x00, 0x3F, 0xFF, 0xF0, 0x00, 0x03, 0xF8, 0x00, 0x0E, 0x00, 0x07, 0x80, 0x3C, 0x00, 0x1F, 0x80, 0x1F, 0x80, 0x03, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x01, 0xF0, 0x00, 0x78, 0x00, 0x00, 0x3F, 0xFF, 0xF8, 0x00, 0x07, 0xFC, 0x00, 0x0E, 0x00, 0x06, 0x00, 0x3C, 0x00, 0x1F, 0x80, 0x1F, 0xE0, 0x03, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x01, 0xF0, 0x00, 0x78, 0x00, 0x00, 0x3F, 0xFF, 0xF8, 0x00, 0x07, 0xFC, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x1F, 0x80, 0x1F, 0xF0, 0x01, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x01, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x3F, 0xFF, 0xF8, 0x00, 0x07, 0xFC, 0x00, 0x1E, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x1F, 0x80, 0x1F, 0xF0, 0x00, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x7F, 0xFF, 0xFC, 0x00, 0x0F, 0xFC, 0x00, 0x0E, 0x00, 0x00, 0x03, 0xFE, 0x00, 0x1F, 0x80, 0x1F, 0xFC, 0x00, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x78, 0x00, 0x1E, 0x7F, 0xFF, 0xFC, 0x00, 0x0F, 0xFC, 0x00, 0x0E, 0x00, 0x00, 0x07, 0xFE, 0x00, 0x1F, 0x80, 0x1F, 0xFC, 0x00, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x01, 0xFF, 0x80, 0x00, 0x00, 0x00, 0x78, 0x00, 0x3F, 0xFF, 0xFF, 0xFC, 0x00, 0x0F, 0xFC, 0x00, 0x1E, 0x00, 0x00, 0x03, 0xFE, 0x00, 0x0F, 0x80, 0x1F, 0xFE, 0x00, 0x7F, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x00, 0xFF, 0x80, 0x02, 0x00, 0x00, 0xF8, 0x00, 0x1F, 0xFF, 0xFF, 0xFE, 0x00, 0x0F, 0xFC, 0x00, 0x0E, 0x00, 0x00, 0x01, 0xFE, 0x00, 0x0F, 0x80, 0x1F, 0xFC, 0x00, 0x7F, 0xFF
defb 0xFF, 0xFF, 0xF0, 0x01, 0xFF, 0x80, 0x01, 0x00, 0x00, 0x78, 0x00, 0x3F, 0xFF, 0xFF, 0xFE, 0x00, 0x1F, 0xFC, 0x00, 0x1E, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x0F, 0x80, 0x1F, 0xFE, 0x00, 0x7F, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x01, 0xFF, 0x80, 0x03, 0x00, 0x00, 0x78, 0x00, 0x3E, 0x5F, 0xFF, 0xFE, 0x00, 0x1F, 0xFC, 0x00, 0x0E, 0x00, 0x04, 0x00, 0xFF, 0x00, 0x0F, 0x80, 0x1F, 0x38, 0x00, 0x7F, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x01, 0xFF, 0x80, 0x01, 0xB8, 0x00, 0xF8, 0x00, 0x00, 0x1F, 0xFF, 0xFE, 0x00, 0x1F, 0xFC, 0x00, 0x1E, 0x00, 0x04, 0x00, 0x7F, 0x80, 0x03, 0x80, 0x1F, 0x80, 0x00, 0x7F, 0xFF
defb 0xFF, 0xFF, 0xF0, 0x01, 0xFF, 0x80, 0x01, 0xF0, 0x00, 0x78, 0x00, 0x00, 0x1F, 0xFF, 0xFF, 0x00, 0x3F, 0xFC, 0x00, 0x0E, 0x00, 0x0E, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x1F, 0x80, 0x00, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x01, 0xFF, 0x80, 0x03, 0xF0, 0x00, 0xF8, 0x00, 0x00, 0x3F, 0xFF, 0xFF, 0x00, 0x3F, 0xFC, 0x00, 0x1E, 0x00, 0x06, 0x00, 0x1F, 0xC0, 0x00, 0x00, 0x1F, 0x80, 0x00, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xF0, 0x01, 0xFF, 0x80, 0x01, 0xF8, 0x00, 0x78, 0x00, 0x00, 0x3F, 0xFF, 0xFF, 0x00, 0x3F, 0xFC, 0x00, 0x1E, 0x00, 0x0F, 0x00, 0x0F, 0xE0, 0x00, 0x00, 0x1F, 0x80, 0x01, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xE0, 0x01, 0xFF, 0xC0, 0x03, 0xF0, 0x00, 0xF8, 0x00, 0x00, 0x3F, 0xFF, 0xFF, 0x80, 0x3F, 0xFC, 0x00, 0x1F, 0x00, 0x07, 0x80, 0x3F, 0xF0, 0x00, 0x00, 0x1F, 0x80, 0x03, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xF0, 0x01, 0xFF, 0x80, 0x01, 0xF8, 0x00, 0x78, 0x00, 0x00, 0x3F, 0xFF, 0xFF, 0x80, 0x7F, 0xFC, 0x00, 0x1E, 0x00, 0x0F, 0xC0, 0xFF, 0xFC, 0x00, 0x00, 0x7F, 0x80, 0x07, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xC3, 0xFF, 0xFF, 0x80, 0x13, 0xFF, 0xC0, 0x1F, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE7, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
defb 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
