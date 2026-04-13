.class public Lorg/apache/hc/client5/http/impl/Wire;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final MAX_STRING_BUILDER_SIZE:I = 0x800

.field private static final THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:Ljava/lang/String;

.field private final log:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/Wire;->THREAD_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(LO5/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/Wire;->log:LO5/a;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/Wire;->id:Ljava/lang/String;

    return-void
.end method

.method private static getStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    sget-object v0, Lorg/apache/hc/client5/http/impl/Wire;->THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x800

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v1, v2}, Lorg/apache/hc/client5/http/impl/Wire;->trimToMaxSize(Ljava/lang/StringBuilder;I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v1
.end method

.method private static trimToMaxSize(Ljava/lang/StringBuilder;I)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->trimToSize()V

    :cond_0
    return-void
.end method

.method private wire(Ljava/lang/String;[BII)V
    .locals 6

    invoke-static {}, Lorg/apache/hc/client5/http/impl/Wire;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "{} {}"

    if-ge v2, p4, :cond_4

    add-int v4, p3, v2

    aget-byte v4, p2, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    const-string v3, "[\\r]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    const-string v4, "[\\n]\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/Wire;->log:LO5/a;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/Wire;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_1
    const/16 v3, 0x20

    if-lt v4, v3, :cond_3

    const/16 v3, 0x7f

    if-lt v4, v3, :cond_2

    goto :goto_1

    :cond_2
    int-to-char v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    const-string v3, "[0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_5

    const/16 p2, 0x22

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/Wire;->log:LO5/a;

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/Wire;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public input(I)V
    .locals 2

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/Wire;->input([B)V

    return-void
.end method

.method public input(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Input"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/Wire;->input([B)V

    return-void
.end method

.method public input(Ljava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "Input"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/apache/hc/client5/http/impl/Wire;->input([BII)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/Wire;->input([B)V

    return-void
.end method

.method public input([B)V
    .locals 2

    const-string v0, "Input"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/hc/client5/http/impl/Wire;->input([BII)V

    return-void
.end method

.method public input([BII)V
    .locals 1

    const-string v0, "Input"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "<< "

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/Wire;->wire(Ljava/lang/String;[BII)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/Wire;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    return v0
.end method

.method public output(I)V
    .locals 2

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/Wire;->output([B)V

    return-void
.end method

.method public output(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Output"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/Wire;->output([B)V

    return-void
.end method

.method public output(Ljava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "Output"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/apache/hc/client5/http/impl/Wire;->output([BII)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/Wire;->output([B)V

    return-void
.end method

.method public output([B)V
    .locals 2

    const-string v0, "Output"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/hc/client5/http/impl/Wire;->output([BII)V

    return-void
.end method

.method public output([BII)V
    .locals 1

    const-string v0, "Output"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, ">> "

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/Wire;->wire(Ljava/lang/String;[BII)V

    return-void
.end method
