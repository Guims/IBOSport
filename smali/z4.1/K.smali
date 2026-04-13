.class public final synthetic Lz4/K;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz4/L;


# direct methods
.method public synthetic constructor <init>(Lz4/L;I)V
    .locals 0

    iput p2, p0, Lz4/K;->b:I

    iput-object p1, p0, Lz4/K;->q:Lz4/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lz4/K;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz4/K;->q:Lz4/L;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lz4/K;->q:Lz4/L;

    iget-object v0, p1, Lz4/L;->M0:Lib/player/base/helper/y;

    iget-boolean v1, p1, Lz4/L;->J0:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lz4/L;->F0:[Ljava/lang/String;

    iget v2, p1, Lz4/L;->H0:I

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lz4/L;->G0:[Ljava/lang/String;

    iget v2, p1, Lz4/L;->H0:I

    aget-object v1, v1, v2

    :goto_0
    iget-object v2, v0, Lib/player/base/helper/y;->q:Ljava/lang/Object;

    check-cast v2, Lz4/Q;

    iget-boolean v0, v0, Lib/player/base/helper/y;->r:Z

    if-eqz v0, :cond_1

    iput-object v1, v2, Lz4/Q;->R0:Ljava/lang/String;

    iget-object v0, v2, Lz4/Q;->J0:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    iput-object v1, v2, Lz4/Q;->S0:Ljava/lang/String;

    iget-object v0, v2, Lz4/Q;->K0:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
