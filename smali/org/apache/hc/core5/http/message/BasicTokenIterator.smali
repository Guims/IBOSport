.class public Lorg/apache/hc/core5/http/message/BasicTokenIterator;
.super Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMA:Ljava/util/BitSet;


# instance fields
.field private final tokenizer:Lorg/apache/hc/core5/util/Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2c

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/message/BasicTokenIterator;->COMMA:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator;-><init>(Ljava/util/Iterator;)V

    sget-object p1, Lorg/apache/hc/core5/util/Tokenizer;->INSTANCE:Lorg/apache/hc/core5/util/Tokenizer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicTokenIterator;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    return-void
.end method


# virtual methods
.method public bridge synthetic hasNext()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicTokenIterator;->parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicTokenIterator;->tokenizer:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v1, Lorg/apache/hc/core5/http/message/BasicTokenIterator;->COMMA:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v2, 0x2c

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    :cond_0
    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http/message/AbstractHeaderElementIterator;->remove()V

    return-void
.end method
