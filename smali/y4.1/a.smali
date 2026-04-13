.class public final synthetic Ly4/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ly4/b;

.field public final synthetic r:Lv0/f;


# direct methods
.method public synthetic constructor <init>(Ly4/b;Lv0/f;I)V
    .locals 0

    iput p3, p0, Ly4/a;->b:I

    iput-object p1, p0, Ly4/a;->q:Ly4/b;

    iput-object p2, p0, Ly4/a;->r:Lv0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Ly4/a;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ly4/a;->q:Ly4/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Ly4/a;->r:Lv0/f;

    iget-object p1, p1, Lv0/f;->b:Ljava/lang/Object;

    check-cast p1, Lz4/f;

    iget-object p1, p1, Lz4/f;->Y0:Lz4/e;

    invoke-interface {p1}, Lz4/e;->a()V

    return-void

    :pswitch_0
    iget-object p1, p0, Ly4/a;->q:Ly4/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Ly4/a;->r:Lv0/f;

    iget-object p1, p1, Lv0/f;->b:Ljava/lang/Object;

    check-cast p1, Lz4/f;

    iget-object p1, p1, Lz4/f;->Y0:Lz4/e;

    invoke-interface {p1}, Lz4/e;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
