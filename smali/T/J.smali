.class public final LT/J;
.super LT/T;


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "finalException"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, LT/T;-><init>(I)V

    iput-object p1, p0, LT/J;->b:Ljava/lang/Throwable;

    return-void
.end method
