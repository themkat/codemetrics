;;; zig-test.el --- Zig language tests for codemetrics.el  -*- lexical-binding: t; -*-

;; Copyright (C) 2024 Marie Katrine Ekeberg

;; Author: Marie Katrine Ekeberg <mke@themkat.net>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;

;;; Code:
(require 'codemetrics)
(require 'zig-mode)

(codemetrics-test zig-simple
  "test/zig/Simple.zig"
  zig-mode
  '(3
    (Decl . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (Decl . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (FieldOrFnCall . 0)
    (FieldOrFnCall . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (Decl . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (ForStatement . 1)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (IfStatement . 2)
    (SuffixExpr . 0)
    (SuffixExpr . 0)))

(codemetrics-test zig-recursion
  "test/zig/Recursion.zig"
  zig-mode
  '(2
    (Decl . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (IfStatement . 1)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 0)
    (SuffixExpr . 1)
    (SuffixExpr . 0)
    (SuffixExpr . 0)))

;;; zig-test.el ends here
