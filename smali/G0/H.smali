.class public final synthetic LG0/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LA/j;

.field public final synthetic r:Landroidx/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(LA/j;Landroidx/media3/exoplayer/DecoderCounters;I)V
    .locals 0

    iput p3, p0, LG0/H;->b:I

    iput-object p1, p0, LG0/H;->q:LA/j;

    iput-object p2, p0, LG0/H;->r:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LG0/H;->b:I

    iget-object v1, p0, LG0/H;->r:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object v2, p0, LG0/H;->q:LA/j;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    iget-object v0, v2, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LG0/I;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, LG0/I;->onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    :pswitch_0
    iget-object v0, v2, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LG0/I;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, LG0/I;->onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
