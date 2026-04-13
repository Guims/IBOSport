.class public final Lcom/google/android/material/datepicker/q;
.super Lv1/X;


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 8

    invoke-direct {p0, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b02a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/q;->u:Landroid/widget/TextView;

    sget-object v1, LJ/U;->a:Ljava/util/WeakHashMap;

    new-instance v2, LJ/C;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const v3, 0x7f0b0390

    const-class v4, Ljava/lang/Boolean;

    const/16 v6, 0x1c

    invoke-direct/range {v2 .. v7}, LJ/C;-><init>(ILjava/lang/Class;III)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v1}, LJ/E;->d(Landroid/view/View;Ljava/lang/Object;)V

    const v1, 0x7f0b029c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lcom/google/android/material/datepicker/q;->v:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
