.class public final synthetic Lz4/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz4/n;


# direct methods
.method public synthetic constructor <init>(Lz4/n;I)V
    .locals 0

    iput p2, p0, Lz4/l;->b:I

    iput-object p1, p0, Lz4/l;->q:Lz4/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lz4/l;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz4/l;->q:Lz4/n;

    iget-object p1, p1, Lz4/n;->D0:Lz4/m;

    invoke-interface {p1}, Lz4/m;->c()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lz4/l;->q:Lz4/n;

    iget-object v0, p1, Lz4/n;->D0:Lz4/m;

    invoke-interface {v0}, Lz4/m;->b()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lz4/l;->q:Lz4/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
