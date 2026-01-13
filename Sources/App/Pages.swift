import Elementary

extension MainLayout: Sendable where Body: Sendable {}

struct MainLayout<Body: HTML>: HTMLDocument {
    var title: String
    @HTMLBuilder var pageContent: Body

    var head: some HTML {
        meta(.charset(.utf8))
        meta(.name(.viewport), .content("width=device-width, initial-scale=1.0"))
        meta(
            .name("description"),
            .content(
                "Neon Law - Attorney directory service connecting you with qualified legal professionals across all practice areas"
            )
        )
        meta(
            .name("keywords"),
            .content("attorney directory, find lawyer, legal referral, attorney matching service, legal professionals")
        )
        meta(.name("author"), .content("Neon Law"))
        meta(.property("og:title"), .content("Neon Law - Attorney Connection Service"))
        meta(
            .property("og:description"),
            .content("Attorney directory service connecting you with qualified legal professionals")
        )
        meta(.property("og:type"), .content("website"))
        meta(.property("og:url"), .content("https://www.neonlaw.com"))

        HTMLComment("Using Tailwind CSS via CDN - replace with built version for production")
        script(.src("https://cdn.tailwindcss.com")) {}

        style {
            HTMLRaw(
                """
                @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap');
                body {
                    font-family: 'Inter', system-ui, -apple-system, sans-serif;
                }
                """
            )
        }
    }

    var body: some HTML {
        Elementary.body(.class("bg-gray-50")) {
            pageContent
        }
    }
}

struct HomePage: HTML {
    var content: some HTML {
        header(.class("bg-white shadow-sm")) {
            div(.class("container mx-auto px-6 py-6")) {
                div(.class("flex items-center gap-4")) {
                    img(.src("/images/logo.svg"), .alt("Neon Law Logo"), .class("h-16 w-16"))
                    div {
                        h1(.class("text-3xl font-bold text-gray-900")) { "Neon Law" }
                        p(.class("text-sm text-gray-600")) { "Attorney Connection Service" }
                    }
                }
            }
        }

        main {
            // Hero Section
            section(.class("bg-gradient-to-br from-cyan-50 to-blue-50 py-20")) {
                div(.class("container mx-auto px-6")) {
                    div(.class("max-w-4xl")) {
                        h2(.class("text-5xl font-bold text-gray-900 mb-6")) {
                            "Connect With The Right Attorney"
                        }
                        p(.class("text-xl text-gray-700 mb-8 leading-relaxed")) {
                            "Neon Law is an attorney directory service that connects you with qualified legal professionals. We don't provide legal advice—instead, we match you with the right attorney for your specific needs. Simply fill out our intake form and we'll connect you to the appropriate attorney."
                        }

                        div(.class("bg-white rounded-2xl p-8 shadow-lg max-w-2xl")) {
                            h3(.class("text-2xl font-bold text-gray-900 mb-4")) { "Get Started in 3 Simple Steps" }
                            div(.class("space-y-4")) {
                                div(.class("flex items-start gap-4")) {
                                    span(
                                        .class(
                                            "flex-shrink-0 w-8 h-8 rounded-full bg-cyan-600 text-white flex items-center justify-center font-bold"
                                        )
                                    ) { "1" }
                                    div {
                                        h4(.class("font-semibold text-gray-900")) { "Email Us Your Needs" }
                                        p(.class("text-gray-700 text-sm")) {
                                            "Send a simple email to support@neonlaw.com describing your legal needs"
                                        }
                                    }
                                }
                                div(.class("flex items-start gap-4")) {
                                    span(
                                        .class(
                                            "flex-shrink-0 w-8 h-8 rounded-full bg-cyan-600 text-white flex items-center justify-center font-bold"
                                        )
                                    ) { "2" }
                                    div {
                                        h4(.class("font-semibold text-gray-900")) { "We Match You" }
                                        p(.class("text-gray-700 text-sm")) {
                                            "Our team reviews your requirements and identifies qualified attorneys in our network"
                                        }
                                    }
                                }
                                div(.class("flex items-start gap-4")) {
                                    span(
                                        .class(
                                            "flex-shrink-0 w-8 h-8 rounded-full bg-cyan-600 text-white flex items-center justify-center font-bold"
                                        )
                                    ) { "3" }
                                    div {
                                        h4(.class("font-semibold text-gray-900")) { "Connect & Proceed" }
                                        p(.class("text-gray-700 text-sm")) {
                                            "We introduce you to the attorney and you work directly with them"
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            // Practice Areas Section
            section(.class("py-20")) {
                div(.class("container mx-auto px-6")) {
                    h2(.class("text-4xl font-bold text-gray-900 mb-12 text-center")) {
                        "Practice Areas We Cover"
                    }

                    div(.class("grid md:grid-cols-2 lg:grid-cols-3 gap-6 max-w-6xl mx-auto")) {
                        // Trademark & IP
                        article(.class("bg-white rounded-xl shadow-md p-6 hover:shadow-lg transition-shadow")) {
                            div(.class("text-5xl mb-3")) { "™️" }
                            h3(.class("text-xl font-bold text-gray-900 mb-2")) { "Trademark & IP" }
                            p(.class("text-gray-700 text-sm")) {
                                "We connect you with attorneys specializing in trademark registration, patent law, and intellectual property protection."
                            }
                        }

                        // Estate Planning
                        article(.class("bg-white rounded-xl shadow-md p-6 hover:shadow-lg transition-shadow")) {
                            div(.class("text-5xl mb-3")) { "📜" }
                            h3(.class("text-xl font-bold text-gray-900 mb-2")) { "Estate Planning" }
                            p(.class("text-gray-700 text-sm")) {
                                "Find attorneys who handle wills, trusts, estate administration, and legacy planning."
                            }
                        }

                        // Business Law
                        article(.class("bg-white rounded-xl shadow-md p-6 hover:shadow-lg transition-shadow")) {
                            div(.class("text-5xl mb-3")) { "🏢" }
                            h3(.class("text-xl font-bold text-gray-900 mb-2")) { "Business Law" }
                            p(.class("text-gray-700 text-sm")) {
                                "Get matched with attorneys for contracts, entity formation, compliance, and business transactions."
                            }
                        }

                        // Real Estate
                        article(.class("bg-white rounded-xl shadow-md p-6 hover:shadow-lg transition-shadow")) {
                            div(.class("text-5xl mb-3")) { "🏠" }
                            h3(.class("text-xl font-bold text-gray-900 mb-2")) { "Real Estate" }
                            p(.class("text-gray-700 text-sm")) {
                                "Connect with real estate attorneys for property transactions, disputes, and title matters."
                            }
                        }

                        // Family Law
                        article(.class("bg-white rounded-xl shadow-md p-6 hover:shadow-lg transition-shadow")) {
                            div(.class("text-5xl mb-3")) { "👨‍👩‍👧" }
                            h3(.class("text-xl font-bold text-gray-900 mb-2")) { "Family Law" }
                            p(.class("text-gray-700 text-sm")) {
                                "Find attorneys specializing in divorce, custody, adoption, and family legal matters."
                            }
                        }

                        // And More
                        article(.class("bg-white rounded-xl shadow-md p-6 hover:shadow-lg transition-shadow")) {
                            div(.class("text-5xl mb-3")) { "⚖️" }
                            h3(.class("text-xl font-bold text-gray-900 mb-2")) { "And More..." }
                            p(.class("text-gray-700 text-sm")) {
                                "Criminal defense, immigration, personal injury, employment law, and many other practice areas."
                            }
                        }
                    }
                }
            }

            // CTA Section
            section(.class("bg-gradient-to-br from-cyan-600 to-blue-600 py-20")) {
                div(.class("container mx-auto px-6 text-center")) {
                    h2(.class("text-4xl font-bold text-white mb-4")) { "Ready to Find Your Attorney?" }
                    p(.class("text-xl text-cyan-50 mb-8")) {
                        "Email us with your legal needs and we'll connect you with the right professional"
                    }
                    a(
                        .href("mailto:support@neonlaw.com?subject=Attorney%20Connection%20Request"),
                        .class(
                            "inline-block bg-white text-cyan-600 font-bold px-8 py-4 rounded-lg hover:bg-gray-100 transition-colors shadow-lg"
                        )
                    ) {
                        "Email Us at support@neonlaw.com"
                    }
                }
            }
        }

        footer(.class("bg-gray-900 text-gray-300 py-8")) {
            div(.class("container mx-auto px-6 text-center")) {
                p(.class("mb-2")) { "© 2025 Neon Law. All rights reserved." }
                p(.class("text-sm")) {
                    "Neon Law is an attorney directory service. We do not provide legal advice."
                }
            }
        }
    }
}
