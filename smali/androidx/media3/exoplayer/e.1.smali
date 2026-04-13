.class public final synthetic Landroidx/media3/exoplayer/e;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/d;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lq0/a;


# direct methods
.method public synthetic constructor <init>(Lq0/a;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/e;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/e;->q:Lq0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/e;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/e;->q:Lq0/a;

    check-cast p1, Lk0/d;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->o(Lq0/a;Lk0/d;)Lq0/a;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/e;->q:Lq0/a;

    check-cast p1, Lk0/d;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->r(Lq0/a;Lk0/d;)Lq0/a;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
