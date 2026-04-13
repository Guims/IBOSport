.class final Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;
.super Lw5/K;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionCatchingResponseBody"
.end annotation


# instance fields
.field private final delegate:Lw5/K;

.field private final delegateSource:LK5/i;

.field thrownException:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lw5/K;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lw5/K;

    new-instance v0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody$1;

    invoke-virtual {p1}, Lw5/K;->source()LK5/i;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody$1;-><init>(Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;LK5/F;)V

    invoke-static {v0}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegateSource:LK5/i;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lw5/K;

    invoke-virtual {v0}, Lw5/K;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lw5/K;

    invoke-virtual {v0}, Lw5/K;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lw5/t;
    .locals 1

    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lw5/K;

    invoke-virtual {v0}, Lw5/K;->contentType()Lw5/t;

    move-result-object v0

    return-object v0
.end method

.method public source()LK5/i;
    .locals 1

    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegateSource:LK5/i;

    return-object v0
.end method

.method public throwIfCaught()V
    .locals 1

    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method
