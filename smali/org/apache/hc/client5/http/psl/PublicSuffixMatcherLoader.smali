.class public final Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static volatile DEFAULT_INSTANCE:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

.field private static final LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;
    .locals 5

    sget-object v0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    if-nez v0, :cond_2

    const-class v0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    if-nez v1, :cond_1

    const-class v1, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;

    const-string v2, "/mozilla/public-suffix-list.txt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v1}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->load(Ljava/net/URL;)Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    move-result-object v1

    sput-object v1, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->LOG:LO5/a;

    const-string v3, "Failure loading public suffix list from default resource"

    invoke-interface {v2, v3, v1}, LO5/a;->A(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    sget-object v2, Lorg/apache/hc/client5/http/psl/DomainType;->ICANN:Lorg/apache/hc/client5/http/psl/DomainType;

    const-string v3, "com"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;-><init>(Lorg/apache/hc/client5/http/psl/DomainType;Ljava/util/Collection;Ljava/util/Collection;)V

    sput-object v1, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_2
    sget-object v0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    return-object v0
.end method

.method public static load(Ljava/io/File;)Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;
    .locals 2

    const-string v0, "File"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static load(Ljava/io/InputStream;)Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;
    .locals 3

    sget-object v0, Lorg/apache/hc/client5/http/psl/PublicSuffixListParser;->INSTANCE:Lorg/apache/hc/client5/http/psl/PublicSuffixListParser;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/psl/PublicSuffixListParser;->parseByType(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static load(Ljava/net/URL;)Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;
    .locals 2

    const-string v0, "URL"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
