.class public final synthetic Landroidx/media3/exoplayer/source/H;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LA/d;

.field public final synthetic r:Landroidx/media3/exoplayer/source/v;

.field public final synthetic s:Landroidx/media3/exoplayer/source/A;


# direct methods
.method public synthetic constructor <init>(LA/d;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;I)V
    .locals 0

    iput p4, p0, Landroidx/media3/exoplayer/source/H;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/source/H;->q:LA/d;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/H;->r:Landroidx/media3/exoplayer/source/v;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/H;->s:Landroidx/media3/exoplayer/source/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/source/H;->b:I

    check-cast p1, Landroidx/media3/exoplayer/source/K;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/H;->q:LA/d;

    iget v1, v0, LA/d;->q:I

    iget-object v0, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/E;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/H;->r:Landroidx/media3/exoplayer/source/v;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/H;->s:Landroidx/media3/exoplayer/source/A;

    invoke-interface {p1, v1, v0, v2, v3}, Landroidx/media3/exoplayer/source/K;->onLoadCanceled(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/H;->q:LA/d;

    iget v1, v0, LA/d;->q:I

    iget-object v0, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/E;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/H;->r:Landroidx/media3/exoplayer/source/v;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/H;->s:Landroidx/media3/exoplayer/source/A;

    invoke-interface {p1, v1, v0, v2, v3}, Landroidx/media3/exoplayer/source/K;->onLoadCompleted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/H;->q:LA/d;

    iget v1, v0, LA/d;->q:I

    iget-object v0, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/E;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/H;->r:Landroidx/media3/exoplayer/source/v;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/H;->s:Landroidx/media3/exoplayer/source/A;

    invoke-interface {p1, v1, v0, v2, v3}, Landroidx/media3/exoplayer/source/K;->onLoadStarted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
