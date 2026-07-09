import { CategoryFormData } from "../types";
import { TextField, Button } from "../vibes";
import { useCategoryForm } from "../hooks/useCategoryForm";
import { formStyle, buttonGroupStyle } from "../styles/forms";

interface CategoryFormProps {
  initialData?: Partial<CategoryFormData>;
  onSubmit: (data: CategoryFormData) => Promise<void>;
  onCancel?: () => void;
  submitLabel?: string;
}

export function CategoryForm({
  initialData,
  onSubmit,
  onCancel,
  submitLabel = "Add Category",
}: CategoryFormProps){

  const { formData, errors, isSubmitting, handleChange, handleSubmit } =
    useCategoryForm({
      initialData,
      onSubmit,
    });

  return(
    <form onSubmit={handleSubmit} style={formStyle}>
      <TextField
        label="Name"
        type="text"
        placeholder="Category Name"
        value={formData.name}
        onChange={(e) => handleChange("name", e.target.value)}
        error={errors.name}
        fullWidth
        required
      />
      <div style={buttonGroupStyle}>
        <Button
          type="submit"
          variant="primary"
          disabled={isSubmitting}
          fullWidth
        >
          {isSubmitting ? "Submitting..." : submitLabel}
        </Button>
        { onCancel && (
          <Button
            type="button"
            variant="secondary"
            onClick={onCancel}
            disabled={isSubmitting}
          >
            Cancel
          </Button>
        )}
      </div>
    </form>
  );
}
