.class public final synthetic Landroidx/media3/exoplayer/r;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/n;
.implements LC0/f;
.implements Lz0/b;
.implements Lo3/d;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/r;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LI0/q;

    invoke-static {p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->a(LI0/q;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Lq0/j;

    check-cast p1, Lk0/d;

    invoke-direct {v0, p1}, Lq0/j;-><init>(Lk0/d;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->A(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onCues(Lj0/c;)V
    .locals 0

    invoke-static {p1}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->b(Lj0/c;)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0

    invoke-static {p1}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->a(Landroidx/media3/common/Metadata;)V

    return-void
.end method
