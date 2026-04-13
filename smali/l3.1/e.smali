.class public final Ll3/e;
.super Ll3/n;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ll3/m;I)V
    .locals 0

    iput p2, p0, Ll3/e;->e:I

    invoke-direct {p0, p1}, Ll3/n;-><init>(Ll3/m;)V

    return-void
.end method


# virtual methods
.method public q()V
    .locals 2

    iget v0, p0, Ll3/e;->e:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/n;->b:Ll3/m;

    const/4 v1, 0x0

    iput-object v1, v0, Ll3/m;->D:Landroid/view/View$OnLongClickListener;

    iget-object v0, v0, Ll3/m;->v:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v0, v1}, LQ5/d;->y(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
