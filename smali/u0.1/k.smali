.class public final synthetic Lu0/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lu0/m;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lu0/m;Lu0/n;I)V
    .locals 0

    iput p3, p0, Lu0/k;->b:I

    iput-object p1, p0, Lu0/k;->q:Lu0/m;

    iput-object p2, p0, Lu0/k;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lu0/k;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lu0/k;->q:Lu0/m;

    iget v1, v0, Lu0/m;->a:I

    iget-object v0, v0, Lu0/m;->b:Landroidx/media3/exoplayer/source/E;

    iget-object v2, p0, Lu0/k;->r:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Lu0/n;->onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/E;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lu0/k;->q:Lu0/m;

    iget v1, v0, Lu0/m;->a:I

    iget-object v0, v0, Lu0/m;->b:Landroidx/media3/exoplayer/source/E;

    iget-object v2, p0, Lu0/k;->r:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Lu0/n;->onDrmKeysRestored(ILandroidx/media3/exoplayer/source/E;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lu0/k;->q:Lu0/m;

    iget v1, v0, Lu0/m;->a:I

    iget-object v0, v0, Lu0/m;->b:Landroidx/media3/exoplayer/source/E;

    iget-object v2, p0, Lu0/k;->r:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Lu0/n;->onDrmSessionReleased(ILandroidx/media3/exoplayer/source/E;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
