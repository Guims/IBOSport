.class public final Lo0/a;
.super Lorg/chromium/net/UploadDataProvider;


# instance fields
.field public final b:[B

.field public q:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    iput-object p1, p0, Lo0/a;->b:[B

    return-void
.end method


# virtual methods
.method public final getLength()J
    .locals 2

    iget-object v0, p0, Lo0/a;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lo0/a;->b:[B

    array-length v2, v1

    iget v3, p0, Lo0/a;->q:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lo0/a;->q:I

    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p2, p0, Lo0/a;->q:I

    add-int/2addr p2, v0

    iput p2, p0, Lo0/a;->q:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    return-void
.end method

.method public final rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo0/a;->q:I

    invoke-virtual {p1}, Lorg/chromium/net/UploadDataSink;->onRewindSucceeded()V

    return-void
.end method
