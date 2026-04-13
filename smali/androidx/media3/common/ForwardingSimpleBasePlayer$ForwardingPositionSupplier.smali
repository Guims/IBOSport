.class final Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/ForwardingSimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForwardingPositionSupplier"
.end annotation


# instance fields
.field private contentPositionMs:J

.field private final player:Landroidx/media3/common/Player;

.field private positionsMs:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Player;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->player:Landroidx/media3/common/Player;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->positionsMs:J

    iput-wide v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->contentPositionMs:J

    return-void
.end method


# virtual methods
.method public getBufferedPositionMs()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->positionsMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getBufferedPosition()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getContentBufferedPositionMs()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->contentPositionMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getContentBufferedPosition()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getContentPositionMs()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->contentPositionMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getCurrentPositionMs()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->positionsMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getTotalBufferedDurationMs()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->positionsMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setConstant(JJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->positionsMs:J

    iput-wide p3, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->contentPositionMs:J

    return-void
.end method
