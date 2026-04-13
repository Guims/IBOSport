.class public final Lj2/e;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Lj2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj2/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj2/e;->a:Lj2/e;

    const-string v0, "clientMetrics"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, LB/f;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method
