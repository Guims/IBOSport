.class public final synthetic Lz4/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz4/p;


# direct methods
.method public synthetic constructor <init>(Lz4/p;I)V
    .locals 0

    iput p2, p0, Lz4/o;->b:I

    iput-object p1, p0, Lz4/o;->q:Lz4/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lz4/o;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz4/o;->q:Lz4/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lz4/o;->q:Lz4/p;

    iget-object v0, p1, Lz4/p;->J0:LG4/a;

    iget v1, p1, Lz4/p;->H0:I

    invoke-virtual {v0, v1}, LG4/a;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
