.class public final synthetic Lr0/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lp5/p;

.field public final synthetic r:Landroidx/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lp5/p;Landroidx/media3/exoplayer/DecoderCounters;I)V
    .locals 0

    iput p3, p0, Lr0/g;->b:I

    iput-object p1, p0, Lr0/g;->q:Lp5/p;

    iput-object p2, p0, Lr0/g;->r:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lr0/g;->b:I

    iget-object v1, p0, Lr0/g;->r:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object v2, p0, Lr0/g;->q:Lp5/p;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    iget-object v0, v2, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Lr0/l;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, Lr0/l;->onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    :pswitch_0
    iget-object v0, v2, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Lr0/l;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, Lr0/l;->onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
