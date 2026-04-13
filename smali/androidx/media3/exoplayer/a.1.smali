.class public final synthetic Landroidx/media3/exoplayer/a;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/a;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/a;->q:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/a;->q:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->k(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->q:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->l(Landroid/content/Context;)LE0/e;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->q:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->u(Landroid/content/Context;)LD0/C;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->q:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->d(Landroid/content/Context;)Landroidx/media3/exoplayer/source/D;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->q:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->e(Landroid/content/Context;)Landroidx/media3/exoplayer/source/D;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->q:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->b(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Landroidx/media3/exoplayer/a;->q:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/AudioFocusManager;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
