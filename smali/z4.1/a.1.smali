.class public final synthetic Lz4/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz4/b;


# direct methods
.method public synthetic constructor <init>(Lz4/b;I)V
    .locals 0

    iput p2, p0, Lz4/a;->b:I

    iput-object p1, p0, Lz4/a;->q:Lz4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lz4/a;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz4/a;->q:Lz4/b;

    iget-object p1, p1, Lz4/b;->X0:Lib/player/pages/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p1, p0, Lz4/a;->q:Lz4/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lz4/a;->q:Lz4/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
