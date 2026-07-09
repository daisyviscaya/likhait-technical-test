import React from "react";
import { COLORS } from "../constants/colors";

export const requiredStyle: React.CSSProperties = {
  color: COLORS.danger,
  marginLeft: "2px",
};

export const labelStyle: React.CSSProperties = {
  fontSize: "0.875rem",
  fontWeight: 600,
  color: COLORS.text.primary,
};

export const errorStyle: React.CSSProperties = {
  fontSize: "0.75rem",
  color: COLORS.danger,
  marginTop: "-0.25rem",
};
