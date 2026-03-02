from pathlib import Path
from pypdf import PdfReader
pdf = Path(r"E:/Comp_Stuff/Glenn_s Shtuff/Documens/School/assino/fifth assine/FYP/FYP_2025_Recovery/interim_report/context/Antenna_Justification (2) (2).pdf")
out = Path(r"E:/Comp_Stuff/Glenn_s Shtuff/Documens/School/assino/fifth assine/FYP/FYP_2025_Recovery/interim_report/context/antenna_extract.txt")
r = PdfReader(str(pdf))
text = "\n".join((p.extract_text() or "") for p in r.pages)
out.write_text(text, encoding="utf-8")
print("pages", len(r.pages))
print("chars", len(text))
print(text[:3000])
