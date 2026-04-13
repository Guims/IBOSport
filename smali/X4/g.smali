.class public abstract LX4/g;
.super LX4/c;

# interfaces
.implements Le5/e;


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(ILV4/d;)V
    .locals 0

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    iput p1, p0, LX4/g;->b:I

    return-void
.end method


# virtual methods
.method public final getArity()I
    .locals 1

    iget v0, p0, LX4/g;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, LX4/a;->getCompletion()LV4/d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Le5/n;->a:Le5/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Le5/o;->a(Le5/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(...)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-super {p0}, LX4/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
