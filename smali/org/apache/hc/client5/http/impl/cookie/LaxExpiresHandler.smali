.class public Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;
.super Lorg/apache/hc/client5/http/impl/cookie/AbstractCookieAttributeHandler;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final DELIMS:Ljava/util/BitSet;

.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;

.field private static final MONTHS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/time/Month;",
            ">;"
        }
    .end annotation
.end field

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x20

    :goto_0
    const/16 v2, 0x2f

    if-gt v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x3b

    :goto_1
    const/16 v2, 0x40

    if-gt v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x5b

    :goto_2
    const/16 v2, 0x60

    if-gt v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x7b

    :goto_3
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    const-string v1, "jan"

    invoke-static {}, LW3/h;->q()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "feb"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->x()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mar"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->y()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apr"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->z()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "may"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->A()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jun"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->B()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jul"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->C()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aug"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->D()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sep"

    invoke-static {}, LW3/h;->C()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oct"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->h()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nov"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->t()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dec"

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->v()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->MONTHS:Ljava/util/Map;

    const-string v0, "^([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})([^0-9].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]{1,2})([^0-9].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)(.*)?$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]{2,4})([^0-9].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    return-void
.end method

.method private copyContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/StringBuilder;)V
    .locals 5

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget-object v4, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    return-void
.end method

.method private skipDelims(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V
    .locals 5

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getPos()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->getUpperBound()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget-object v4, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->updatePos(I)V

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    const-string v0, "expires"

    return-object v0
.end method

.method public parse(Lorg/apache/hc/client5/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Invalid \'expires\' attribute: "

    const-string v4, "Cookie"

    invoke-static {v1, v4}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Lorg/apache/hc/core5/util/Tokenizer$Cursor;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;-><init>(II)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v21, v15

    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/hc/core5/util/Tokenizer$Cursor;->atEnd()Z

    move-result v16

    if-nez v16, :cond_6

    invoke-direct {v0, v2, v4}, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->skipDelims(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->copyContent(Ljava/lang/CharSequence;Lorg/apache/hc/core5/util/Tokenizer$Cursor;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-nez v17, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez v8, :cond_2

    sget-object v6, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/4 v6, 0x0

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    goto :goto_0

    :cond_2
    if-nez v10, :cond_3

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    if-nez v11, :cond_4

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->MONTHS:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/time/Month;

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    if-nez v12, :cond_5

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v8, :cond_a

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    if-eqz v12, :cond_a

    const/16 v0, 0x46

    if-lt v9, v0, :cond_7

    const/16 v0, 0x63

    if-gt v9, v0, :cond_7

    add-int/lit16 v9, v9, 0x76c

    :cond_7
    if-ltz v9, :cond_8

    const/16 v0, 0x45

    if-gt v9, v0, :cond_8

    add-int/lit16 v9, v9, 0x7d0

    :cond_8
    const/4 v6, 0x1

    if-lt v15, v6, :cond_9

    const/16 v0, 0x1f

    if-gt v15, v0, :cond_9

    const/16 v0, 0x641

    if-lt v9, v0, :cond_9

    const/16 v0, 0x17

    if-gt v13, v0, :cond_9

    const/16 v0, 0x3b

    if-gt v14, v0, :cond_9

    move/from16 v6, v21

    if-gt v6, v0, :cond_9

    invoke-virtual {v7}, Ljava/time/Month;->getValue()I

    move-result v0

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v20

    const/16 v19, 0x0

    move/from16 v18, v6

    move/from16 v16, v13

    move/from16 v17, v14

    move v14, v0

    move v13, v9

    invoke-static/range {v13 .. v20}, Ljava/time/ZonedDateTime;->of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/hc/client5/http/cookie/SetCookie;->setExpiryDate(Ljava/time/Instant;)V

    return-void

    :cond_9
    new-instance v0, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
