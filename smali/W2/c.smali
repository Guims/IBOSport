.class public final LW2/c;
.super Landroid/view/ViewOutlineProvider;


# instance fields
.field public final synthetic a:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 0

    iput-object p1, p0, LW2/c;->a:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p1, p0, LW2/c;->a:Lcom/google/android/material/chip/Chip;

    iget-object p1, p1, Lcom/google/android/material/chip/Chip;->t:LW2/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, LW2/f;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
