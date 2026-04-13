.class public Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;
    }
.end annotation


# static fields
.field private static final BLANK:C = ' '

.field private static final COMMA_CHAR:C = ','

.field private static final DELIMITER:Ljava/util/BitSet;

.field private static final EQUAL_CHAR:C = '='

.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;

.field private static final SPACE:Ljava/util/BitSet;

.field private static final TERMINATORS:Ljava/util/BitSet;


# instance fields
.field private final tokenParser:Lorg/apache/hc/core5/util/Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;

    const/16 v0, 0x20

    const/16 v1, 0x3d

    const/16 v2, 0x2c

    filled-new-array {v0, v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->TERMINATORS:Ljava/util/BitSet;

    filled-new-array {v2}, [I

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->DELIMITER:Ljava/util/BitSet;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/Tokenizer;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->SPACE:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/hc/core5/util/Tokenizer;->INSTANCE:Lorg/apache/hc/core5/util/Tokenizer;

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/hc/client5/http/auth/ChallengeType;Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/auth/ChallengeType;",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/hc/core5/http/message/ParserCursor;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/auth/AuthChallenge;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v0, p2, p3}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    invoke-virtual {p3}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v0

    const-string v1, "Malformed auth challenge"

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v3, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->SPACE:Ljava/util/BitSet;

    invoke-virtual {v2, p2, p3, v3}, Lorg/apache/hc/core5/util/Tokenizer;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v1, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;

    invoke-direct {v1, v2}, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2, p3, v1}, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->parseChallenge(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;)Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;

    iget-object v4, v3, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;->params:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/hc/core5/http/NameValuePair;

    invoke-interface {v5}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-interface {v5}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_1
    move-object v5, v6

    :goto_2
    new-instance v7, Lorg/apache/hc/client5/http/auth/AuthChallenge;

    iget-object v3, v3, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;->schemeName:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    move-object v4, v6

    :goto_3
    invoke-direct {v7, p1, v3, v5, v4}, Lorg/apache/hc/client5/http/auth/AuthChallenge;-><init>(Lorg/apache/hc/client5/http/auth/ChallengeType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p2

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http/ParseException;

    invoke-direct {p1, v1}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/apache/hc/core5/http/ParseException;

    invoke-direct {p1, v1}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseChallenge(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;)Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;
    .locals 6

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Malformed auth challenge"

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v2, p1, p2}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p3, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;->params:Ljava/util/List;

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {v3, v0, v1}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x3d

    const/16 v5, 0x2c

    if-ne v2, v4, :cond_3

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    sget-object v2, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->DELIMITER:Ljava/util/BitSet;

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/hc/core5/util/Tokenizer;->parseValue(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->tokenParser:Lorg/apache/hc/core5/util/Tokenizer;

    invoke-virtual {v2, p1, p2}, Lorg/apache/hc/core5/util/Tokenizer;->skipWhiteSpace(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    :cond_2
    iget-object v2, p3, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;->params:Ljava/util/List;

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {v3, v0, v1}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_4

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    iget-object v2, p3, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;->params:Ljava/util/List;

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {v3, v0, v1}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object p1, p3, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;->params:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;

    invoke-direct {p1, v0}, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser$ChallengeInt;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    new-instance p1, Lorg/apache/hc/core5/http/ParseException;

    invoke-direct {p1, v3}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/apache/hc/core5/http/ParseException;

    invoke-direct {p1, v3}, Lorg/apache/hc/core5/http/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseToken(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sget-object v3, Lorg/apache/hc/client5/http/impl/auth/AuthChallengeParser;->TERMINATORS:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
