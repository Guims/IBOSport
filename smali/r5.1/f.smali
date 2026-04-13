.class public abstract Lr5/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    new-instance v0, Ln5/b;

    invoke-direct {v0}, Ln5/b;-><init>()V

    filled-new-array {v0}, [Ln5/b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT4/n;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LT4/n;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lj5/a;

    invoke-direct {v0, v1}, Lj5/a;-><init>(LT4/n;)V

    invoke-static {v0}, Lj5/e;->s(Lj5/c;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lr5/f;->a:Ljava/util/List;

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
