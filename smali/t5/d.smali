.class public final Lt5/d;
.super Lt5/g;


# static fields
.field public static final s:Lt5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lt5/d;

    sget v2, Lt5/j;->c:I

    sget v3, Lt5/j;->d:I

    sget-wide v4, Lt5/j;->e:J

    sget-object v6, Lt5/j;->a:Ljava/lang/String;

    invoke-direct {v0}, Lm5/s;-><init>()V

    new-instance v1, Lt5/b;

    invoke-direct/range {v1 .. v6}, Lt5/b;-><init>(IIJLjava/lang/String;)V

    iput-object v1, v0, Lt5/g;->r:Lt5/b;

    sput-object v0, Lt5/d;->s:Lt5/d;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
