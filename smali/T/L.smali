.class public final LT/L;
.super LT/T;


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1

    const-string v0, "readException"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, LT/T;-><init>(I)V

    iput-object p1, p0, LT/L;->b:Ljava/lang/Throwable;

    return-void
.end method
