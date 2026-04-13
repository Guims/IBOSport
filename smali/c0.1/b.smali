.class public final Lc0/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lc0/b;->a:Lc0/b;

    return-void
.end method
