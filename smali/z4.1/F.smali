.class public final synthetic Lz4/F;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz4/H;


# direct methods
.method public synthetic constructor <init>(Lz4/H;I)V
    .locals 0

    iput p2, p0, Lz4/F;->b:I

    iput-object p1, p0, Lz4/F;->q:Lz4/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lz4/F;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz4/F;->q:Lz4/H;

    iget-object p1, p1, Lz4/H;->D0:Lz4/G;

    invoke-interface {p1}, Lz4/G;->c()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lz4/F;->q:Lz4/H;

    iget-object v0, p1, Lz4/H;->D0:Lz4/G;

    invoke-interface {v0}, Lz4/G;->b()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
