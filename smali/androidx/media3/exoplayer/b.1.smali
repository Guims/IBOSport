.class public final synthetic Landroidx/media3/exoplayer/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/b;->b:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    iput p2, p0, Landroidx/media3/exoplayer/b;->q:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b;->b:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    iget v1, p0, Landroidx/media3/exoplayer/b;->q:I

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;->a(Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;I)V

    return-void
.end method
