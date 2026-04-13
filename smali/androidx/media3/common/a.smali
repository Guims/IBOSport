.class public final synthetic Landroidx/media3/common/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/common/a;->a:I

    iput-object p1, p0, Landroidx/media3/common/a;->b:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 2

    iget v0, p0, Landroidx/media3/common/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/common/a;->b:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    invoke-virtual {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->getTotalBufferedDurationMs()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/a;->b:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    invoke-virtual {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->getContentPositionMs()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/common/a;->b:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    invoke-virtual {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->getContentBufferedPositionMs()J

    move-result-wide v0

    return-wide v0

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/common/a;->b:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    invoke-virtual {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->getCurrentPositionMs()J

    move-result-wide v0

    return-wide v0

    :pswitch_3
    iget-object v0, p0, Landroidx/media3/common/a;->b:Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;

    invoke-virtual {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer$ForwardingPositionSupplier;->getBufferedPositionMs()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
