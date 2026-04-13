.class public final Landroidx/media3/decoder/SimpleDecoderOutputBuffer;
.super Lp0/g;


# instance fields
.field public final u:Landroidx/media3/decoder/ffmpeg/b;

.field public v:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/ffmpeg/b;)V
    .locals 0

    invoke-direct {p0}, LU2/e;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->u:Landroidx/media3/decoder/ffmpeg/b;

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LU2/e;->q:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lp0/g;->r:J

    iput v0, p0, Lp0/g;->s:I

    iput-boolean v0, p0, Lp0/g;->t:Z

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->v:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->u:Landroidx/media3/decoder/ffmpeg/b;

    iget-object v0, v0, Landroidx/media3/decoder/ffmpeg/b;->a:Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {v0, p0}, Lp0/i;->m(Lp0/g;)V

    return-void
.end method
