.class public final synthetic LG0/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LA/j;

.field public final synthetic r:J

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(LA/j;IJ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LG0/F;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/F;->q:LA/j;

    iput p2, p0, LG0/F;->s:I

    iput-wide p3, p0, LG0/F;->r:J

    return-void
.end method

.method public synthetic constructor <init>(LA/j;JI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LG0/F;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/F;->q:LA/j;

    iput-wide p2, p0, LG0/F;->r:J

    iput p4, p0, LG0/F;->s:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LG0/F;->b:I

    iget v1, p0, LG0/F;->s:I

    iget-wide v2, p0, LG0/F;->r:J

    iget-object v4, p0, LG0/F;->q:LA/j;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v4, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LG0/I;

    sget v4, Lk0/C;->a:I

    invoke-interface {v0, v2, v3, v1}, LG0/I;->onVideoFrameProcessingOffset(JI)V

    return-void

    :pswitch_0
    iget-object v0, v4, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LG0/I;

    sget v4, Lk0/C;->a:I

    invoke-interface {v0, v1, v2, v3}, LG0/I;->onDroppedFrames(IJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
