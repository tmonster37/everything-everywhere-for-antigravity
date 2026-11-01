# 🚀 AI Agent Skills Hub & Backup Repository

Kho lưu trữ chuẩn hóa toàn bộ kỹ năng (**Skills**), cấu hình quy tắc (**AGENTS.md**), và bản sắc hoạt động (**SOUL.md**) cho các Agent lập trình thông minh: **Claude Code** và **Google Antigravity (Gemini CLI)**.

Được thiết kế theo cấu trúc module tương thích chuẩn mã nguồn mở (tương tự `anthropics/skills` và `fission-ai/openspec`), hỗ trợ **348+ skills chuyên biệt**, tự động kích hoạt qua ngôn ngữ tự nhiên tiếng Việt.

---

## 📂 Cấu Trúc Thư Mục (Repository Layout)

```text
ai-agent-skills-backup/
├── AGENTS.md                  # Bản quy tắc toàn cục & bộ phân loại ý định tiếng Việt (Root)
├── SOUL.md                    # Triết lý kiến trúc, linh hồn & chuẩn mực AI Agent (Root)
├── .gitignore                 # Bỏ qua cache, file rác và log tạm
├── README.md                  # Hướng dẫn chi tiết & danh mục kỹ năng
│
├── rules/                     # Thư mục chứa quy tắc hệ thống
│   ├── AGENTS.md              # Global Rules & Intent Classifier (64+ intents tự nhiên)
│   └── SOUL.md                # Senior Engineer Persona & Engineering Tenets
│
├── scripts/                   # Bộ công cụ tự động hóa triển khai
│   ├── install-to-claude.ps1      # Cài đặt / đồng bộ toàn bộ skills sang ~/.claude/
│   └── install-to-antigravity.ps1 # Cài đặt / đồng bộ plugins sang ~/.gemini/config/plugins/
│
├── skills/                    # Kho 348+ kỹ năng chuẩn hóa (Mỗi thư mục chứa SKILL.md)
│   ├── subagent-driven-development/ # [MỚI] Điều phối và ủy quyền agent con tự động
│   ├── dispatching-parallel-agents/ # [MỚI] Chạy song song nhiều agent độc lập
│   ├── systematic-debugging/        # [MỚI] Điều tra bug từ gốc rễ theo phương pháp 4 pha
│   ├── verification-before-completion/ # [MỚI] Nghiệm thu chứng cứ trước khi kết thúc task
│   ├── verification-loop/           # [MỚI] Vòng lặp test-fix tự động liên tục
│   ├── writing-plans/ & executing-plans/ # [MỚI] Lập roadmap & thực thi kế hoạch chia nhỏ
│   ├── using-git-worktrees/         # [MỚI] Quản lý nhiều nhánh song song bằng git worktree
│   ├── finishing-a-development-branch/ # [MỚI] Đóng nhánh, dọn dẹp và chuẩn bị merge/PR
│   ├── requesting-code-review/      # [MỚI] Tự động tạo review request chất lượng cao
│   ├── receiving-code-review/       # [MỚI] Xử lý feedback code review có hệ thống
│   ├── frontend-patterns/           # [MỚI] React component patterns & custom hook chuẩn
│   ├── eval-harness/                # [MỚI] Đo lường & benchmark chất lượng output của AI
│   ├── logo-design/                 # [MỚI] Thiết kế logo vector, app icon & brand identity
│   ├── brainstorming/               # [MỚI] Thảo luận ý tưởng tính năng theo phương pháp Socratic
│   ├── smart-test/                  # Kiểm thử hành vi & tối ưu CI (Blast-radius lanes)
│   ├── impeccable/                  # Audit & trau chuốt UI đỉnh cao
│   ├── design-taste-frontend/       # Chống AI slop, nâng tầm thẩm mỹ frontend
│   ├── minimalist-ui/               # Giao diện tối giản phong cách báo chí
│   ├── industrial-brutalist-ui/     # Giao diện thô mộc, kỹ thuật
│   ├── full-output-enforcement/     # Chống viết tắt, bắt buộc code trọn vẹn
│   ├── plan-ceo-review/             # Đánh giá ý tưởng sản phẩm từ góc nhìn Founder/CEO
│   ├── plan-eng-review/             # Đánh giá kiến trúc kỹ thuật (Engineering Manager)
│   ├── qa/ & ship/                  # Kiểm thử giao diện & đóng gói phát hành
│   ├── code-review-skill/           # Review mã nguồn cho hơn 25+ ngôn ngữ
│   ├── claude-mem/                  # Bộ nhớ dài hạn cross-session
│   ├── strategic-compact/           # Quản lý và nén ngữ cảnh chủ động
│   ├── humanizer/                   # Khử giọng văn máy móc của AI, viết tự nhiên
│   ├── ui-ux-pro-max/               # Thư viện giao diện, bảng màu, typography 50+ styles
│   ├── clean-code/                  # Quy chuẩn viết code tinh gọn, chuẩn SOLID
│   ├── database-design/             # Thiết kế CSDL, indexing, quan hệ thực thể
│   ├── openspec-*/                  # 12 kỹ năng Spec-Driven Change Management
│   └── ...                          # Các kỹ năng Cloudflare, Vercel, WordPress, Khoa học
│
└── plugins/                   # Gói Plugins hoàn chỉnh cho Google Antigravity
    ├── antigravity-kit-plugin/
    ├── developer-power-skills/
    ├── elite-workflows-and-taste/
    ├── openspec-plugin/
    ├── social-media-skills/
    ├── chrome-devtools-plugin/
    └── scientific-agent-skills/
```

---

## 🎯 Danh Mục Kỹ Năng Tinh Hoa Nổi Bật

### 1. Điều Phối Đa Agent & Quản Trị Nhánh Song Song (Multi-Agent & Worktrees - MỚI)
- **`subagent-driven-development`**: Phân rã tác vụ lớn thành chuỗi nhiệm vụ độc lập, tự động ủy quyền và giám sát agent con.
- **`dispatching-parallel-agents`**: Chạy đồng thời nhiều agent trên các module khác nhau, tổng hợp kết quả tự động mà không nghẽn context.
- **`using-git-worktrees`**: Tạo và quản lý nhiều workspace độc lập trên cùng một repository, giúp chạy thử nghiệm hoặc code đa tính năng song song mà không xung đột git branch.
- **`finishing-a-development-branch`**: Kiểm tra điều kiện bàn giao, chạy test tích hợp, dọn rác và đóng gói release cho nhánh phát triển.

### 2. Kỹ Nghệ Debug Chuyên Sâu & Nghiệm Thu Bằng Chứng (Debugging & Verification - MỚI)
- **`systematic-debugging`**: Quy trình 4 pha điều tra bug từ gốc rễ: Cô lập biến ➔ Tái hiện lỗi tối thiểu ➔ Phân tích giả thuyết ➔ Vá lỗi có kiểm chứng.
- **`verification-before-completion`**: Chặn đứng thói quen tự mãn của AI bằng checklist bằng chứng bắt buộc trước khi tuyên bố hoàn thành task.
- **`verification-loop`**: Vòng lặp khép kín: Tự động chạy test ➔ Đọc trace lỗi ➔ Sửa mã ➔ Chạy lại test cho tới khi 100% pass.

### 3. Lập Kế Hoạch & Thiết Kế Kiến Trúc (Planning & Architecture - MỚI)
- **`writing-plans` & `executing-plans`**: Chia nhỏ roadmap tính năng theo từng bước khả thi (bite-sized tasks), theo dõi tiến độ và xử lý phát sinh.
- **`frontend-patterns`**: Chuẩn hóa cấu trúc component React/Next.js, tách biệt UI logic với data layer, tối ưu custom hooks và composition.
- **`eval-harness`**: Hệ thống benchmark định lượng giúp đánh giá chất lượng code, độ chính xác và tính an toàn của mô hình AI.

### 4. Sáng Tạo Ý Tưởng & Thiết Kế Thương Hiệu (Creative & Brand - MỚI)
- **`brainstorming`**: Phương pháp đối thoại Socratic giúp đào sâu yêu cầu người dùng, phân tích edge-case và phản biện giải pháp trước khi code.
- **`logo-design`**: Thiết kế nhận diện thương hiệu, biểu tượng app, icon SVG chuẩn vector với bảng màu và typography đồng nhất.

### 5. Kiểm Thử Thông Minh & Tối Ưu CI
- **`smart-test`**: Kiểm thử định hướng hành vi (Behavior-First), phân làn vùng ảnh hưởng (Blast-Radius Lanes) và loại bỏ hoàn toàn test rác.

### 6. Thẩm Mỹ Giao Diện & Chống "AI Slop"
- **`impeccable` & `design-taste-frontend`**: Khắc phục các giao diện AI nhạt nhẽo (generic gradient, card vô hồn), áp dụng ngôn ngữ thiết kế độc bản (Minimalist, Industrial Brutalist).
- **`full-output-enforcement`**: Loại bỏ vĩnh viễn thói quen viết tắt `// TODO: tự code tiếp` của AI.

---

## ⚡ Hướng Dẫn Cài Đặt & Sử Dụng

### Dành cho Claude Code:
Chạy script PowerShell để sao chép toàn bộ skills và thiết lập rules:
```powershell
.\scripts\install-to-claude.ps1
```

### Dành cho Google Antigravity (Gemini CLI):
Chạy script PowerShell để kích hoạt toàn bộ Plugins và Intent Classifier:
```powershell
.\scripts\install-to-antigravity.ps1
```

---

## 🗣️ Điều Khiển Tự Nhiên Bằng Tiếng Việt

Nhờ cơ chế nhận diện ý định tại `AGENTS.md`, bạn chỉ cần trò chuyện tự nhiên:
- *"Brainstorm tính năng mới / thảo luận ý tưởng"* ➔ Tự động gọi `brainstorming`.
- *"Debug lỗi này từ gốc rễ / tìm nguyên nhân bug khó"* ➔ Tự động gọi `systematic-debugging`.
- *"Ủy quyền cho agent con / chia việc đa agent"* ➔ Tự động gọi `subagent-driven-development`.
- *"Chạy song song nhiều agent"* ➔ Tự động gọi `dispatching-parallel-agents`.
- *"Kiểm tra trước khi hoàn tất / nghiệm thu bằng chứng"* ➔ Tự động gọi `verification-before-completion`.
- *"Lập kế hoạch triển khai / chia nhỏ roadmap"* ➔ Tự động gọi `writing-plans`.
- *"Thực thi plan từng bước"* ➔ Tự động gọi `executing-plans`.
- *"Thiết kế logo / làm thương hiệu cho app"* ➔ Tự động gọi `logo-design`.
- *"Viết unit test cho tính năng này / kiểm thử hành vi"* ➔ Tự động gọi `smart-test`.
- *"Trau chuốt lại UI trang này cho thật đẳng cấp"* ➔ Tự động gọi `impeccable`.
- *"Nén ngữ cảnh lại để tránh tràn token"* ➔ Tự động gọi `strategic-compact`.
- *"Viết code đầy đủ, không để placeholder"* ➔ Tự động gọi `full-output-enforcement`.
- *"Sửa bài viết này cho tự nhiên, khử mùi AI"* ➔ Tự động gọi `humanizer`.

---
*Kho lưu trữ được cập nhật ngày 18/10/2026 với 348+ kỹ năng chuẩn hóa.*
