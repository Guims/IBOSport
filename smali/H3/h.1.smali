.class public final LH3/h;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/h;->a:LH3/h;

    const-string v0, "clsId"

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
