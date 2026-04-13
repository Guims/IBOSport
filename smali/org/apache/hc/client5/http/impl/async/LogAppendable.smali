.class final Lorg/apache/hc/client5/http/impl/async/LogAppendable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private final log:LO5/a;

.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(LO5/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->log:LO5/a;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->prefix:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->log:LO5/a;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->buffer:Ljava/lang/StringBuilder;

    const-string v2, "{} {}"

    invoke-interface {p1, v0, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->buffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p0

    :cond_0
    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public flush()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->buffer:Ljava/lang/StringBuilder;

    const-string v3, "{} {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LogAppendable;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method
